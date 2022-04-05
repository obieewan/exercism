defmodule Secrets do
  def secret_add(secret) do
    # Please implement the secret_add/1 function
   fn param -> param + secret end
  end

  def secret_subtract(secret) do
    # Please implement the secret_subtract/1 function
    fn param -> param - secret end
  end

  def secret_multiply(secret) do
    # Please implement the secret_multiply/1 function
    fn param -> param * secret end
  end

  def secret_divide(secret) do
    # Please implement the secret_divide/1 function
    fn param -> trunc(param / secret) end
  end

  def secret_and(secret) do
    # Please implement the secret_and/1 function
    fn param -> Bitwise.band(secret, param) end
  end

  def secret_xor(secret) do
    # Please implement the secret_xor/1 function
    fn param -> Bitwise.bxor(param, secret) end
  end

  def secret_combine(secret_function1, secret_function2) do
    # Please implement the secret_combine/2 function
    fn param -> 
      secret_function1.(param)
      |> secret_function2.()
    end

  end
end
