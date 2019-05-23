namespace Hackbf\Op;

use type Hackbf\Memory;
use type Hackbf\IO;

class Output implements \Hackbf\Op {

  public function execute(
    Memory $memory,
    IO $io
  ): void {
    $io->write($memory->read());
  }
}
