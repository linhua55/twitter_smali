.class Lfc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/facebook/imagepipeline/animated/impl/b;


# instance fields
.field final synthetic a:Ldg;

.field final synthetic b:Lez;


# direct methods
.method constructor <init>(Lez;Ldg;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lfc;->b:Lez;

    iput-object p2, p0, Lfc;->a:Ldg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/animated/base/n;Landroid/graphics/Rect;)Lcom/facebook/imagepipeline/animated/base/g;
    .locals 2

    .prologue
    .line 351
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/a;

    iget-object v1, p0, Lfc;->a:Ldg;

    invoke-direct {v0, v1, p1, p2}, Lcom/facebook/imagepipeline/animated/impl/a;-><init>(Ldg;Lcom/facebook/imagepipeline/animated/base/n;Landroid/graphics/Rect;)V

    return-object v0
.end method
