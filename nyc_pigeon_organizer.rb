require "pry"
def nyc_pigeon_organizer(data)
  results = {}
  data.each do |characteristic, info|
    info.each do |trait, names|
      names.each do |name|
        if results[name] == nil
          results[name] = {}
          results[name][characteristic] = [trait.to_s]
        elsif results[name][characteristic] != nil
          results[name][characteristic] << trait.to_s
        else
          results[name][characteristic] = [trait.to_s]
        end
      end
    end
  end
  results
end
