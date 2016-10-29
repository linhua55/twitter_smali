.class Lcwk;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcwj;


# direct methods
.method constructor <init>(Lcwj;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcwk;->b:Lcwj;

    iput-object p2, p0, Lcwk;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcwk;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcwk;->b:Lcwj;

    iget-object v0, v0, Lcwj;->a:Lcwe;

    invoke-static {v0}, Lcwe;->a(Lcwe;)Lcwm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcwk;->b:Lcwj;

    iget-object v0, v0, Lcwj;->a:Lcwe;

    invoke-static {v0}, Lcwe;->b(Lcwe;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcwk;->b:Lcwj;

    iget-object v0, v0, Lcwj;->a:Lcwe;

    invoke-static {v0}, Lcwe;->a(Lcwe;)Lcwm;

    move-result-object v0

    iget-object v1, p0, Lcwk;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcwm;->a(Landroid/graphics/Bitmap;)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcwk;->b:Lcwj;

    iget-object v0, v0, Lcwj;->a:Lcwe;

    invoke-static {v0}, Lcwe;->f(Lcwe;)V

    goto :goto_0
.end method
