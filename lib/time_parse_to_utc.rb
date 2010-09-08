require 'date'

module TimeParseToUtc
  def parse_to_utc(input)
    parts = Date._parse(input)
    return if parts.nil? || parts.empty?

    time = Time.utc(parts[:year],
                    parts[:mon],
                    parts[:mday],
                    parts[:hour],
                    parts[:min],
                    parts[:sec],
                    parts[:sec_fraction])

    time -= parts[:offset] if parts[:offset]
    time
  end
end

Time.extend(TimeParseToUtc)
