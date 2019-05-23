namespace Hackbf;

use function array_key_exists;

class IO {

  public function __construct(
    protected vec<int> $input,
    protected int $position = 0,
    protected vec<int> $output = vec[]
  ) {}

  public function getOutput(): vec<int> {
    return $this->output;
  }

  public function read(): int {
    if (array_key_exists($this->position, $this->input)) {
      return $this->input[$this->position++];
    }
    return 0;
  }

  public function write(
    int $value
  ): void {
    $this->output[] = $value;
  }
}
