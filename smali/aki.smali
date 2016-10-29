.class Laki;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/model/core/Tweet;

.field final synthetic b:Lakh;


# direct methods
.method constructor <init>(Lakh;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Laki;->b:Lakh;

    iput-object p2, p0, Laki;->a:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Laki;->b:Lakh;

    invoke-static {v0}, Lakh;->a(Lakh;)Lcom/twitter/android/moments/ui/fullscreen/gl;

    move-result-object v0

    iget-object v1, p0, Laki;->a:Lcom/twitter/model/core/Tweet;

    invoke-interface {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/gl;->a(Lcom/twitter/model/core/Tweet;)V

    .line 73
    return-void
.end method
