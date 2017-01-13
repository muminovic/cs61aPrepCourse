def shuffle array
	shuffled = []
	length = array.length
	while shuffled.length != length
		index = rand(array.length)
		shuffled.push(array[index])
		array.delete_at(index)
	end
	return shuffled
end	

songs = shuffle(Dir['muminovic/Music/iTunes/iTunesMedia/Music/*.m4a'])

File.open 'playlist.m3u', 'w' do |f|
	songs.each do |song|
		f.write song
	end
end
puts 'Playlist complete. Enjoy!'