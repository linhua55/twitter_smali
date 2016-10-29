.class Laod;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/notificationtimeline/l;

.field final synthetic b:Laob;


# direct methods
.method constructor <init>(Laob;Lcom/twitter/android/notificationtimeline/l;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Laod;->b:Laob;

    iput-object p2, p0, Laod;->a:Lcom/twitter/android/notificationtimeline/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Laod;->a:Lcom/twitter/android/notificationtimeline/l;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/notificationtimeline/l;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method
