.class Lcom/twitter/app/common/base/u;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/twitter/app/common/base/SnackbarData;

.field final synthetic c:Lcom/twitter/app/common/base/s;


# direct methods
.method constructor <init>(Lcom/twitter/app/common/base/s;Landroid/app/Activity;Lcom/twitter/app/common/base/SnackbarData;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/twitter/app/common/base/u;->c:Lcom/twitter/app/common/base/s;

    iput-object p2, p0, Lcom/twitter/app/common/base/u;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/twitter/app/common/base/u;->b:Lcom/twitter/app/common/base/SnackbarData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/app/common/base/u;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twitter/app/common/base/u;->b:Lcom/twitter/app/common/base/SnackbarData;

    iget-object v1, v1, Lcom/twitter/app/common/base/SnackbarData;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method
