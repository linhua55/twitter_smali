.class Lcom/twitter/android/notificationtimeline/e;
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
    .line 48
    iput-object p1, p0, Lcom/twitter/android/notificationtimeline/e;->a:Lcom/twitter/android/notificationtimeline/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/e;->a:Lcom/twitter/android/notificationtimeline/a;

    invoke-static {v0}, Lcom/twitter/android/notificationtimeline/a;->a(Lcom/twitter/android/notificationtimeline/a;)Lcom/twitter/android/ActivityFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/ActivityFragment;->m()V

    .line 52
    return-void
.end method
