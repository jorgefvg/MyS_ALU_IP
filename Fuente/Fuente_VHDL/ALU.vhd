library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ALU is
    port(
        clk : in std_logic;                         -- Reloj para la ALU
        A : in std_logic_vector(3 downto 0);        -- Entrada A de 4 bits
        B : in std_logic_vector(3 downto 0);        -- Entrada B de 4 bits
        ALU_Sel : in std_logic_vector(1 downto 0);  -- Selector de operación
        Result : out std_logic_vector(7 downto 0);  -- Resultado de la operación (se utilizan 8 bits para manejar multiplicación)
        CarryOut : out std_logic                    -- Salida de acarreo o préstamo
    );
end entity ALU;

architecture ALU_arq of ALU is

    -- Señales internas para las operaciones
    signal Sum: std_logic_vector(3 downto 0);
    signal Difference: std_logic_vector(3 downto 0);
    signal Product: std_logic_vector(7 downto 0);
    signal Quotient: std_logic_vector(3 downto 0);
    signal Remainder: std_logic_vector(3 downto 0);
    signal Carry: std_logic;
    signal Borrow: std_logic;

    -- Señales internas para los resultados de cada operacion
    signal int_result: std_logic_vector(7 downto 0);
    signal int_carryout: std_logic;

begin
    -- Instancia del sumador de 4 bits usando sumNb (que a la vez uriliza sub1b)
    sumador_inst: entity work.sumNb
        generic map(N => 4)
        port map(
            a_i => A,
            b_i => B,
            ci_i => '0',
            s_o => Sum,
            co_o => Carry
        );

    -- Instancia de la resta de 4 bits
    subtractor_inst: entity work.subtractor4b
        port map(
            a => A,
            b => B,
            diff => Difference,
            borrow => Borrow
        );

    -- Instancia del multiplicador de 4 bits
    multiplier_inst: entity work.multiplier4b
        port map(
            a => A,
            b => B,
            product => Product
        );

    -- Instancia del divisor de 4 bits
    divider_inst: entity work.divider4b
        port map(
            clk => clk, -- Conectar el reloj
            dividend => A,
            divisor => B,
            quotient => Quotient,
            remainder => Remainder
        );
		
    -- Proceso para seleccionar la operación que debe realizar la ALU
    process(clk)
    begin
        if rising_edge(clk) then
            case ALU_Sel is
                when "00" =>                           -- Operación de suma
                    int_result <= "0000" & Sum;        -- Extender el resultado a 8 bits
                    int_carryout <= Carry;
                when "01" =>                           -- Operación de resta
                    int_result <= "0000" & Difference; -- Extender el resultado a 8 bits
                    int_carryout <= Borrow;            -- Usar Borrow para indicar el préstamo
                when "10" =>                           -- Operación de multiplicación
                    int_result <= Product;
                    int_carryout <= '0';               -- No se usa CarryOut en multiplicación
                when "11" =>                           -- Operación de división
                    int_result <= "0000" & Quotient;   -- Extender el cociente a 8 bits
                    int_carryout <= '0';               -- No se usa CarryOut en división
                when others =>
                    int_result <= (others => '0');     -- Estado por defecto (sin operación)
                    int_carryout <= '0';
            end case;

            -- Se actualiza el resultado en las salidas
            Result <= int_result;
            CarryOut <= int_carryout;
        end if;
    end process;

end architecture ALU_arq;