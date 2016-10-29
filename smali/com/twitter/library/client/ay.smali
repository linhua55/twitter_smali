.class public final Lcom/twitter/library/client/ay;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field final a:Landroid/net/Uri;

.field final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/app/common/base/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/twitter/app/common/base/f;

.field d:Ljava/lang/CharSequence;

.field e:Ljava/lang/String;

.field f:Ljava/lang/Object;

.field g:I

.field h:Z

.field i:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/twitter/app/common/base/BaseFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/twitter/library/client/ay;->a:Landroid/net/Uri;

    .line 143
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/twitter/library/client/ay;->i:I

    .line 144
    iput-object p2, p0, Lcom/twitter/library/client/ay;->b:Ljava/lang/Class;

    .line 145
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/library/client/ax;
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/twitter/library/client/ax;

    invoke-direct {v0, p0}, Lcom/twitter/library/client/ax;-><init>(Lcom/twitter/library/client/ay;)V

    return-object v0
.end method

.method public a(I)Lcom/twitter/library/client/ay;
    .locals 0

    .prologue
    .line 179
    iput p1, p0, Lcom/twitter/library/client/ay;->g:I

    .line 180
    return-object p0
.end method

.method public a(Lcom/twitter/app/common/base/f;)Lcom/twitter/library/client/ay;
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/twitter/library/client/ay;->c:Lcom/twitter/app/common/base/f;

    .line 153
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/twitter/library/client/ay;
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/twitter/library/client/ay;->d:Ljava/lang/CharSequence;

    .line 162
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/twitter/library/client/ay;
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/twitter/library/client/ay;->f:Ljava/lang/Object;

    .line 205
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/library/client/ay;
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/twitter/library/client/ay;->e:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public a(Z)Lcom/twitter/library/client/ay;
    .locals 0

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/twitter/library/client/ay;->h:Z

    .line 199
    return-object p0
.end method

.method public b(I)Lcom/twitter/library/client/ay;
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcom/twitter/library/client/ay;->i:I

    .line 190
    return-object p0
.end method
