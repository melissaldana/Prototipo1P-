using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVista
{
    public partial class frmMDI : Form
    {
        public frmMDI()
        {
            InitializeComponent();
        }

        private void consultaClientesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmME = new frmConsultaClientes();
            frmME.Show();
            this.Hide();
        }

        private void consultaProveedoresToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmME = new frmConsultaProveedores();
            frmME.Show();
            this.Hide();
        }

        private void consultaCuentaCorrienteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmME = new frmConsultaCuentaCorriente();
            frmME.Show();
            this.Hide();
        }
    }
}
