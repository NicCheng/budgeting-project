require 'csv'
require_relative '../../data_structures/transaction'

class TransactionHistoryParser
  def parse_csv(csv_path)
    csv = CSV.read(csv_path).reject{|line| line.empty?}
    user = csv[1]
    account = csv[2]
    balance = csv[3]
    headers = csv[4]

    transaction_array = []
    csv[5..csv.length].each do |transaction_entry|
      date = transaction_entry[0]
      amount = transaction_entry[1]
      balance = transaction_entry[2]
      description = transaction_entry[3]

      transaction = Transaction.new(
        noticed_at: transaction_entry[0],
        amount: amount,
        description: description
      )

      transaction_array.push(transaction)
      puts(transaction.inspect)
    end
  end
end
