# `Telegram::Bot`

A tiny but easy-to-use wrapper of [Telegram Bot API](https://core.telegram.org/bots/api).

It's still under experiment, not ready for use.

## `future.rb`

```ruby
# `Telegram::Bot.run' will start a loop until `Interrupt (Ctrl+C)' occured
Telegram::Bot.run TOKEN, proxy: 'https://127.0.0.1:1080' do |bot|
  bot.start do # once
    bot.ok 'yes, master.'
  end
  bot.get 'drive' do # if message['drive']
    bot.send_photo garage.pop rescue bot.retry(1) { |x| bot.sorry "Failed #{x} times." }
  end                          # totally retry ^ times
  bot.on /\-md([.^]+)\Z/m do |matched|
    phantomjs 'md.js', matched
    bot.send_photo 'cp.jpg' rescue bot.sorry
  end
  bot.finish do # rescue Interrupt
    bot.ok 'byebye.'
  end
  bot.before_update do |update|
    # do something before handling every [update]
  end
  bot.after_update do |update|
    # do something after handling every [update]
  end
end
```

## Further future

Features of a real bot.

- database
- session
- authority
- dynamically add functions
- 