# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails=emails
  end

  def parse
    @emails = @emails.split(", ")
    @emails.each_with_index do |email, index|
      if email.to_s.split(" ") != nil
        @emails.delete(email)
        @emails.push(email.split(" ")[0], email.split(" ")[1])
      end
    end
    @emails
  end

end
