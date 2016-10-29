.class Lxp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lxo;


# direct methods
.method constructor <init>(Lxo;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lxp;->a:Lxo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 126
    iget-object v0, p0, Lxp;->a:Lxo;

    invoke-static {v0}, Lxo;->b(Lxo;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lxp;->a:Lxo;

    invoke-static {v2}, Lxo;->b(Lxo;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "user_id"

    iget-object v3, p0, Lxp;->a:Lxo;

    .line 127
    invoke-static {v3}, Lxo;->a(Lxo;)Lcom/twitter/library/database/dm/d;

    move-result-object v3

    iget-wide v4, v3, Lcom/twitter/library/database/dm/d;->c:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method
