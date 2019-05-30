namespace Hackbf\Op;

use type Hackbf\Memory;
use type Hackbf\IO;

class Change implements \Hackbf\Op {

  public function __construct(
    protected int $amount = 0
  ) {}

  public function execute(
    Memory $memory,
    IO $_
  ): void {
    $memory->write($memory->read() + $this->amount);
  }
}
