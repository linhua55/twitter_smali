.class Lcom/twitter/android/aw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Landroid/graphics/Bitmap;

.field final synthetic f:Ljava/io/File;

.field final synthetic g:Lcom/twitter/android/au;


# direct methods
.method constructor <init>(Lcom/twitter/android/au;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/twitter/android/aw;->g:Lcom/twitter/android/au;

    iput-object p2, p0, Lcom/twitter/android/aw;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/twitter/android/aw;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/android/aw;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/twitter/android/aw;->d:Z

    iput-object p6, p0, Lcom/twitter/android/aw;->e:Landroid/graphics/Bitmap;

    iput-object p7, p0, Lcom/twitter/android/aw;->f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/twitter/android/aw;->g:Lcom/twitter/android/au;

    iget-object v1, p0, Lcom/twitter/android/aw;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/aw;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/aw;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/twitter/android/aw;->d:Z

    iget-object v5, p0, Lcom/twitter/android/aw;->e:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/twitter/android/aw;->f:Ljava/io/File;

    invoke-static/range {v0 .. v6}, Lcom/twitter/android/au;->a(Lcom/twitter/android/au;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/twitter/android/aw;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
