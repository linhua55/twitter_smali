.class Lcom/twitter/android/notificationtimeline/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/notificationtimeline/l;


# direct methods
.method constructor <init>(Lcom/twitter/android/notificationtimeline/l;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/twitter/android/notificationtimeline/m;->a:Lcom/twitter/android/notificationtimeline/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/m;->a:Lcom/twitter/android/notificationtimeline/l;

    invoke-static {v0}, Lcom/twitter/android/notificationtimeline/l;->a(Lcom/twitter/android/notificationtimeline/l;)Lcom/twitter/app/main/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/m;->a:Lcom/twitter/android/notificationtimeline/l;

    invoke-static {v0}, Lcom/twitter/android/notificationtimeline/l;->a(Lcom/twitter/android/notificationtimeline/l;)Lcom/twitter/app/main/r;

    move-result-object v0

    const v1, 0x7f0a0042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/main/r;->a(II)V

    .line 53
    :cond_0
    return-void
.end method
