class Factura

    def initialize()
        @diccionario_impuestos = { "UT" => 6.85, "NV" => 8.00, "TX" => 6.25, "AL" => 4.00, "CA" => 8.25 }
    end

    def validar_descuento(valor)
        if (valor <= 1000)
            return 0
        elsif (valor > 1000 && valor <= 5000)
            return 3
        elsif (valor > 5000 && valor <= 7000)
            return 5
        elsif (valor > 7000 && valor <= 10000)
            return 7
        elsif (valor > 10000 && valor <= 50000)
            return 10
        elsif (valor > 50000)
            return 15
        end
    end

    def validar_impuesto(estado)
        if (!@diccionario_impuestos.has_key?(estado))
            #Mensaje de error pendiente
            return 0.0
        end
        return @diccionario_impuestos[estado] 
    end

    def generar_factura(cantidad, precio, estado)
        valor = cantidad.to_f * precio.to_f
        puts "# #{cantidad} * #{precio} = #{valor}"
        impuesto = validar_impuesto(estado)
        impuesto_aplicado = impuesto/100* valor
        puts "#{estado}(%#{impuesto}) = #{impuesto_aplicado.round(2)}"
        descuento = validar_descuento(valor)
        descuento_aplicado = descuento.to_f/100 * valor
        puts "DTO(%#{descuento}) = #{descuento_aplicado.round(2)}"
        total=valor+impuesto_aplicado-descuento_aplicado
        puts "Total = $#{total.round(2)}"
    end
end

factura = Factura.new
factura.generar_factura(ARGV[0],ARGV[1],ARGV[2])

#Como usuario quiero una clase que reciba 1 parametro (Cantidad) un metodo generar factura y lo imprima para poder verlo
#Como usuario quiero a la clase que reciba 1 parametro extra (Precio Unitario) para poder verlo
#Como usuario quiero agregar a la funcion generar factura la impresion  que regrese e imprima el precio unitario por la cantidad para poder conocer el precio bruto
#Como usuario quiero crear funcion que reciba una cantidad valide los descuentos segun la tabla y regrese el porcentaje de descuento para conocer el descuento
#Como usuario quiero calcular el monto de dinero con descuento en base al subtotal para conocer el monto con descuento
#Como usuario quiero agregar a la funcion generar factura recibir nuevo parametro estado he imprimirlo para poder verlo
#Como usuario quiero crear funcion que reciba el estado y regrese el porcentaje de impuestos de ese estado para conocer el % de impuesto
#Como usuario quiero mostar la cantidad de impuestos sobre el valor del pedido para conocer la cantidad con impuestos
#Como usuario quiero validar si no existe el estado que se ingresa y si no poner %0.0 de impuestos para manejar el error
#Como usuario quiero mostrar el total de la factura aplicando los impuestos y los descuentos para ver el total de la factura