namespace Hackbf\Op;

use type Hackbf\Memory;
use type Hackbf\IO;

class Input implements \Hackbf\Op {

  public function execute(
    Memory $memory,
    IO $io
  ): void {
    $memory->write($io->read());
  }
}
