local present, indent_o_matic = pcall(require, "indent-o-matic")

if not present then
   return
end

indent_o_matic.setup {}
