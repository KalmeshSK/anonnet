# 🥷 AnonNet — Anonymous Reddit & Real-time Live Chat

> **The front page of the anonymous internet.** Zero login, zero registration, zero tracking, and zero identity logs.

AnonNet combines the best of Reddit's threaded discussion boards with an anonymous real-time chatroom system powered by WebSockets.

---

## 🌟 Key Features

### 1. 🎭 Instant Burner Identity & Persona System
- **Zero Registration**: Open the website and you are instantly assigned an anonymous persona (e.g. `QuantumPhantom #402`) with an algorithmic generative SVG avatar.
- **Reroll Persona**: Regenerate a fresh identity anytime with one click.
- **Ghost Mode**: Toggle between posting under your burner alias or as a 100% nameless "Anonymous Ghost".
- **Cryptographic Burner Tripcodes**: Enter an optional secret passphrase to generate a tamper-proof cryptographic tripcode (e.g. `!7hG8x`). This lets you prove you are the same author across different threads without an email or account.

### 2. 🌐 Sub-Anon Discussion Boards
- Pre-seeded communities:
  - `a/confessions` — Deep secrets and guilt shared without judgment.
  - `a/tech` — Silicon Valley whispers, AI debates, and dev gossip.
  - `a/debates` — Unpopular opinions and spicy hot takes.
  - `a/showerthoughts` — 3 AM philosophical epiphanies.
  - `a/vent` — The void to scream into and read others' struggles.
  - `a/random` — Internet culture, weird links, and late-night chaos.
- **Create Your Own Sub-Anon**: Any anonymous user can create a brand new community with custom icon, banner accent color, tagline, and rules.

### 3. 📝 Reddit-style Posts & Voting
- **Post Types**:
  - **Discussions**: Text posts with markdown formatting.
  - **Media / Images**: Upload images anonymously or paste image URLs with auto-preview.
  - **Anonymous Polls**: Interactive community polls with live percentage progress bars.
- **Karma & Voting**:
  - Reddit-style upvote and downvote system with animated scores.
  - Sorting algorithms: 🔥 **Hot** (decay-weighted), ⚡ **New** (chronological), 🏆 **Top** (all-time highest), 💬 **Discussed**.
  - Flair filter chips: `Confession`, `Discussion`, `Debate`, `Poll`, `Vent`, `Hot Take`, `Mindblow`.
  - Search bar across all anonymous posts and topics.
  - Saved bookmarks stored locally in the browser.

### 4. 💬 Nested Threaded Comments
- Infinite multi-level threaded replies (Anon A replies to Anon B).
- Author `[OP]` highlight tag when the original poster comments in their own thread.
- Collapsible comment trees (`[-]` button).
- Per-comment upvotes and downvotes.

### 5. ⚡ Real-Time Anonymous Live Chat (WebSockets)
- **Live Chat Rooms**:
  - Global Lobby for late-night unfiltered chatter.
  - Per-board live chatrooms (e.g. `a/confessions` chatroom, `a/tech` chatroom).
- **Real-time broadcast**: Instant zero-lag message delivery to all connected peers.
- **Online Presence**: Live counter showing active anons currently connected.
- **Typing Indicators**: Real-time "Anon is typing..." feedback.
- **Emoji Reactions**: React with 🔥, 💀, 🚀, ❤️, 👏, 🤣 to messages with live synchronized counts.
- **Audio Pings**: Gentle chime when new messages arrive (with mute toggle).

---

## 🚀 How to Run

### Quick Start (Single Command)

In PowerShell or Terminal:

```bash
cd "C:\Users\LENOVO\.gemini\antigravity\scratch\anon-reddit"
npm start
```

Then open your browser to:
👉 **`http://localhost:4000`**

---

### Development Mode (with Live Hot-Reloading)

To run the Vite dev server with frontend hot-reload:

```bash
# Terminal 1: Start Backend API + WebSocket Server
cd "C:\Users\LENOVO\.gemini\antigravity\scratch\anon-reddit"
npm run dev:server

# Terminal 2: Start Vite Client
cd "C:\Users\LENOVO\.gemini\antigravity\scratch\anon-reddit"
npm run dev:client
```

Frontend runs on `http://localhost:3000` with automated proxying to the backend on `http://localhost:4000`.

---

## 🛠️ Tech Stack

- **Frontend**: React 19, Tailwind CSS (Dark Mode), Lucide Icons, Canvas Confetti.
- **Backend**: Node.js, Express 5, WebSocket (`ws`), Multer (anonymous image uploads).
- **Storage**: In-memory database with automatic JSON file persistence (`server/data.json`).
- **Privacy Engine**: Client-side localStorage for identity and voting state; zero IP or user tracking on the server.
