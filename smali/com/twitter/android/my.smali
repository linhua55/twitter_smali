.class Lcom/twitter/android/my;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/RemoveAccountDialogActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/RemoveAccountDialogActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/twitter/android/my;->a:Lcom/twitter/android/RemoveAccountDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/twitter/android/my;->a:Lcom/twitter/android/RemoveAccountDialogActivity;

    iget-boolean v0, v0, Lcom/twitter/android/RemoveAccountDialogActivity;->b:Z

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/twitter/android/my;->a:Lcom/twitter/android/RemoveAccountDialogActivity;

    invoke-virtual {v0}, Lcom/twitter/android/RemoveAccountDialogActivity;->finish()V

    .line 105
    :cond_0
    return-void
.end method
