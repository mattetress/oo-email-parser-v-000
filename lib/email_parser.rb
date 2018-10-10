# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    split = @emails.split(/[\s,]/)
    email_list = []
    split.each do |email|
      email_list << email unless email_list.include?(email)
    end
    email_list
  end

end
