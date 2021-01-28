# Rover
A simple coding kata that simulates a remote controlled Rover Bot.

The code behaves as follows:

```shell
Hello! Robot coming online.
Command the robot with:
  L - turn left
  R - turn right
  S - step forward
  ? - this message
  Q - quit
> S
Robot at (1, 0) facing North
> L
Robot at (1, 0) facing West
> S
Robot at (1, -1) facing West
> S
Robot at (1, -2) facing West
> R
Robot at (1, -2) facing North
> R
Robot at (1, -2) facing East
> S
Robot at (1, -1) facing East
> ?
Command the robot with:
  L - turn left
  R - turn right
  S - step forward
  ? - this message
  Q - quit
> Q
Robot shutting down.
```

## Running

```shell
bundle exec ruby main.rb
```

## Testing

```shell
bundle install
bundle exec rspec spec
```
