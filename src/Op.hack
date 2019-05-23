namespace Hackbf;

use type Hackbf\Memory;
use type Hackbf\IO;

interface Op {

  public function execute(
    Memory $memory,
    IO $io
  ): void;
}
