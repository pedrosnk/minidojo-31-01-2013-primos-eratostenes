
@calcula_primos = (limite) ->
  num for num in [2..limite] when (num2 for num2 in [2..num] when num % num2 == 0 ).length == 1
