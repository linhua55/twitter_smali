.class Lcom/twitter/android/nb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/twitter/android/RemoveAccountDialogActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/RemoveAccountDialogActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/twitter/android/nb;->b:Lcom/twitter/android/RemoveAccountDialogActivity;

    iput-object p2, p0, Lcom/twitter/android/nb;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/twitter/android/nb;->a:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    return-void
.end method
