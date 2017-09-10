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
    if @emails.class == Array
      @emails.each_with_index do |email, index|
        new_split = email.split(" ")
        new_split.each do |email|
          @emails=@emails.push(email)
        end
      end
    else
      @emails=@emails.split(" ")
    end
    @emails
  end

end
