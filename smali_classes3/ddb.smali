.class Lddb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lrx/ao;

.field final synthetic b:Ldda;


# direct methods
.method constructor <init>(Ldda;Lrx/ao;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lddb;->b:Ldda;

    iput-object p2, p0, Lddb;->a:Lrx/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lddb;->a:Lrx/ao;

    invoke-virtual {v0}, Lrx/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lddb;->a:Lrx/ao;

    invoke-virtual {v0, p1}, Lrx/ao;->b_(Ljava/lang/Object;)V

    .line 115
    :cond_0
    return-void
.end method
