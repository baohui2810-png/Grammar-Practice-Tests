@import url('https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap');

:root {
    --primary: #4e54c8;
    --secondary: #8f94fb;
    --success: #2ecc71;
    --danger: #e74c3c;
    --text-dark: #2c3e50;
    --text-light: #ffffff;
    --bg-color: #f4f7f6;
}

* { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Nunito', sans-serif; }

body {
    background: linear-gradient(135deg, var(--primary), var(--secondary));
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
}

.container {
    background: var(--text-light);
    width: 100%;
    max-width: 600px;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.2);
    overflow: hidden;
    position: relative;
}

.screen { display: none; padding: 30px; animation: fadeIn 0.4s ease; }
.screen.active { display: block; }

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(10px); }
    to { opacity: 1; transform: translateY(0); }
}

h1, h2 { color: var(--text-dark); text-align: center; margin-bottom: 20px; }

.header-info {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 20px;
    padding-bottom: 10px;
    border-bottom: 2px solid #eee;
}

.timer { font-size: 1.2rem; font-weight: bold; color: var(--danger); }
.progress { font-weight: bold; color: var(--primary); }

.input-group { margin-bottom: 20px; }
.input-group input {
    width: 100%; padding: 12px; border: 2px solid #ddd;
    border-radius: 8px; font-size: 1rem; transition: 0.3s;
}
.input-group input:focus { border-color: var(--primary); outline: none; }

.btn {
    display: inline-block; padding: 12px 24px; border: none;
    border-radius: 8px; font-size: 1rem; font-weight: bold;
    cursor: pointer; transition: 0.3s; text-align: center; width: 100%;
    margin-bottom: 10px;
}
.btn-primary { background: var(--primary); color: var(--text-light); }
.btn-primary:hover { background: #3c42a5; }
.btn-outline { background: transparent; border: 2px solid var(--primary); color: var(--primary); }
.btn-outline:hover { background: var(--primary); color: var(--text-light); }
.btn-success { background: var(--success); color: var(--text-light); }

.nav-buttons { display: flex; justify-content: space-between; gap: 10px; margin-top: 20px; }
.nav-buttons .btn { width: auto; flex: 1; margin: 0; }

.question-text { font-size: 1.2rem; color: var(--text-dark); margin-bottom: 20px; font-weight: 600; }

.options { display: flex; flex-direction: column; gap: 10px; }
.option-label {
    display: flex; align-items: center; padding: 12px;
    border: 2px solid #eee; border-radius: 8px; cursor: pointer; transition: 0.2s;
}
.option-label:hover { background: #f8f9fa; border-color: var(--secondary); }
.option-label input { margin-right: 15px; transform: scale(1.2); }
.option-label.selected { border-color: var(--primary); background: #eef0ff; }

.result-item { margin-bottom: 15px; padding: 15px; border-radius: 8px; background: #f8f9fa; }
.result-item.correct { border-left: 5px solid var(--success); }
.result-item.wrong { border-left: 5px solid var(--danger); }
.correct-answer-text { color: var(--success); font-weight: bold; margin-top: 5px; font-size: 0.9rem;}

.history-table { width: 100%; border-collapse: collapse; margin-top: 10px; }
.history-table th, .history-table td { border: 1px solid #ddd; padding: 10px; text-align: center; }
.history-table th { background: var(--primary); color: white; }

#result-list { max-height: 400px; overflow-y: auto; margin-bottom: 20px; }
