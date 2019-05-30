namespace Hackbf\Op;

use type Hackbf\Memory;
use type Hackbf\IO;

class Loop implements \Hackbf\Op {

  public function __construct(
    protected vec<\Hackbf\Op> $ops
  ) {}

  public function execute(
    Memory $memory,
    IO $io
  ): void {
    while ($memory->read()) {
      $this->executeProgram($memory, $io);
    }
  }

  public function executeProgram(
    Memory $memory,
    IO $io
  ): void {
    foreach ($this->ops as $op) {
      $op->execute($memory, $io);
    }
  }
}
