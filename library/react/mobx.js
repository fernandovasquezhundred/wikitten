  <script src="https://fb.me/react-0.14.3.min.js"></script>
  <script src="https://fb.me/react-dom-0.14.3.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.34/browser.min.js"></script>
  <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/mobx/3.4.1/mobx.umd.js"></script>
  <script src="https://unpkg.com/mobx-react@4.3.5/index.js"></script>
  <script src="https://unpkg.com/mobx-state-tree@1.2.1/dist/mobx-state-tree.umd.js"></script>
  
const types = window.mobxStateTree.types;
const actions = window.mobxStateTree.actions;
const observer = window.mobxReact.observer;

const Website = types.model("Website", {
    title: types.string,
    done: false
}).actions(self => ({
    filterByDomain(domain) {
        self.done = !self.done
    }
}))

const Store = types.model("Store", {
    websites: types.array(Website)
}).actions(self => ({
    filterByDomain(domain) {
        self.done = !self.done
    }
}))

const store = Store.create({ websites: []})

