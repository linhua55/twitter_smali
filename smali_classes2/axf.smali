.class public Laxf;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Laxf",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected b:Landroid/view/View;

.field protected c:Landroid/support/v4/app/FragmentActivity;

.field protected d:Landroid/os/Bundle;

.field protected e:Lcom/twitter/app/common/base/n;

.field protected f:Lcom/twitter/android/media/selection/MediaAttachmentController;

.field protected g:Lawq;

.field protected h:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Laxf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 172
    iput-object p1, p0, Laxf;->d:Landroid/os/Bundle;

    .line 173
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxf;

    return-object v0
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)Laxf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentActivity;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Laxf;->c:Landroid/support/v4/app/FragmentActivity;

    .line 137
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxf;

    return-object v0
.end method

.method public a(Landroid/view/View;)Laxf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 130
    iput-object p1, p0, Laxf;->b:Landroid/view/View;

    .line 131
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxf;

    return-object v0
.end method

.method public a(Lawq;)Laxf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lawq;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 153
    iput-object p1, p0, Laxf;->g:Lawq;

    .line 154
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxf;

    return-object v0
.end method

.method public a(Lcom/twitter/android/media/selection/MediaAttachmentController;)Laxf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/media/selection/MediaAttachmentController;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Laxf;->f:Lcom/twitter/android/media/selection/MediaAttachmentController;

    .line 149
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxf;

    return-object v0
.end method

.method public a(Lcom/twitter/app/common/base/n;)Laxf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/app/common/base/n;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Laxf;->e:Lcom/twitter/app/common/base/n;

    .line 143
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxf;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Laxf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 166
    iput-object p1, p0, Laxf;->h:Ljava/lang/CharSequence;

    .line 167
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxf;

    return-object v0
.end method

.method public b()Lawv;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lawv;

    invoke-direct {v0, p0}, Lawv;-><init>(Laxf;)V

    return-object v0
.end method
