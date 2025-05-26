%%raw("import './App.css'")
@react.component
let make = () => {
  let (count, setCount) = React.useState(() => 0)
  let button_text = React.string(`count is ${count->Int.toString}`)
  let countAction = _ => setCount(count => count + 1)

  <div>
    <h1> {"What is this about?"->React.string} </h1>
    <p>
      {React.string("This is a simple template for a Vite project using ReScript & Tailwind CSS.")}
    </p>
    <h2> {React.string("Fast Refresh Test")} </h2>
    // <Button onClick={_ => setCount(count => count + 1)}> {button_text} </Button>
    <Button onClick={countAction}> {button_text} </Button>
    <p>
      {React.string("Edit ")}
      <code> {React.string("src/App.res")} </code>
      {React.string(" and save to test Fast Refresh.")}
    </p>
  </div>
}
