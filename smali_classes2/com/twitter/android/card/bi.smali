.class Lcom/twitter/android/card/bi;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twitter/android/card/bg;


# direct methods
.method constructor <init>(Lcom/twitter/android/card/bg;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/twitter/android/card/bi;->b:Lcom/twitter/android/card/bg;

    iput-object p2, p0, Lcom/twitter/android/card/bi;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/twitter/android/card/bi;->b:Lcom/twitter/android/card/bg;

    iget-object v1, p0, Lcom/twitter/android/card/bi;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/card/bi;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/card/bg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x0

    return v0
.end method
