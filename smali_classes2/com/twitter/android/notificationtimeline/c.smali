.class Lcom/twitter/android/notificationtimeline/c;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/notificationtimeline/a;


# direct methods
.method constructor <init>(Lcom/twitter/android/notificationtimeline/a;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/twitter/android/notificationtimeline/c;->a:Lcom/twitter/android/notificationtimeline/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/c;->a:Lcom/twitter/android/notificationtimeline/a;

    invoke-static {v0}, Lcom/twitter/android/notificationtimeline/a;->a(Lcom/twitter/android/notificationtimeline/a;)Lcom/twitter/android/ActivityFragment;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/ActivityFragment;->a(ZZ)V

    .line 35
    return-void
.end method
