.class Lcom/twitter/android/card/bh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twitter/android/card/bg;


# direct methods
.method constructor <init>(Lcom/twitter/android/card/bg;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/twitter/android/card/bh;->b:Lcom/twitter/android/card/bg;

    iput-object p2, p0, Lcom/twitter/android/card/bh;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/twitter/android/card/bh;->b:Lcom/twitter/android/card/bg;

    iget-object v0, v0, Lcom/twitter/android/card/bg;->v:Lcom/twitter/android/card/CardActionHelper;

    iget-object v1, p0, Lcom/twitter/android/card/bh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/CardActionHelper;->b(Ljava/lang/String;)V

    .line 174
    return-void
.end method
