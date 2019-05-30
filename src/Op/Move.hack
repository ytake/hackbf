namespace Hackbf\Op;

use type Hackbf\Memory;
use type Hackbf\IO;

class Move implements \Hackbf\Op {

  public function __construct(
    protected int $direction = 0
  ) {}

  public function execute(
    Memory $memory,
    IO $_
  ): void {
    $memory->move($this->direction);
  }
}
