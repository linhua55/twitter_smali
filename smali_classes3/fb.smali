.class Lfb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/impl/h;


# instance fields
.field final synthetic a:Lax;

.field final synthetic b:Landroid/app/ActivityManager;

.field final synthetic c:Ldg;

.field final synthetic d:Lby;

.field final synthetic e:Lez;


# direct methods
.method constructor <init>(Lez;Lax;Landroid/app/ActivityManager;Ldg;Lby;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lfb;->e:Lez;

    iput-object p2, p0, Lfb;->a:Lax;

    iput-object p3, p0, Lfb;->b:Landroid/app/ActivityManager;

    iput-object p4, p0, Lfb;->c:Ldg;

    iput-object p5, p0, Lfb;->d:Lby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/animated/base/g;Lcom/facebook/imagepipeline/animated/base/j;)Lcom/facebook/imagepipeline/animated/impl/c;
    .locals 7

    .prologue
    .line 338
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/c;

    iget-object v1, p0, Lfb;->a:Lax;

    iget-object v2, p0, Lfb;->b:Landroid/app/ActivityManager;

    iget-object v3, p0, Lfb;->c:Ldg;

    iget-object v4, p0, Lfb;->d:Lby;

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/animated/impl/c;-><init>(Lax;Landroid/app/ActivityManager;Ldg;Lby;Lcom/facebook/imagepipeline/animated/base/g;Lcom/facebook/imagepipeline/animated/base/j;)V

    return-object v0
.end method
