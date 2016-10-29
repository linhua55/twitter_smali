.class Lalf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/fullscreen/gl;

.field final synthetic b:Lcom/twitter/model/core/Tweet;

.field final synthetic c:Lald;


# direct methods
.method constructor <init>(Lald;Lcom/twitter/android/moments/ui/fullscreen/gl;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lalf;->c:Lald;

    iput-object p2, p0, Lalf;->a:Lcom/twitter/android/moments/ui/fullscreen/gl;

    iput-object p3, p0, Lalf;->b:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lalf;->a:Lcom/twitter/android/moments/ui/fullscreen/gl;

    iget-object v1, p0, Lalf;->b:Lcom/twitter/model/core/Tweet;

    invoke-interface {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/gl;->a(Lcom/twitter/model/core/Tweet;)V

    .line 97
    return-void
.end method
