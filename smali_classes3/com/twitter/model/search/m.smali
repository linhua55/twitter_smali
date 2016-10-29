.class public Lcom/twitter/model/search/m;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/t;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/twitter/model/search/d;

.field public e:Ljava/lang/String;

.field public f:Lcom/twitter/model/core/TwitterSocialProof;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitter/model/search/n;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget-object v0, p1, Lcom/twitter/model/search/n;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/search/m;->a:Ljava/util/List;

    .line 34
    iget-boolean v0, p1, Lcom/twitter/model/search/n;->b:Z

    iput-boolean v0, p0, Lcom/twitter/model/search/m;->b:Z

    .line 35
    iget-boolean v0, p1, Lcom/twitter/model/search/n;->c:Z

    iput-boolean v0, p0, Lcom/twitter/model/search/m;->c:Z

    .line 36
    iget-object v0, p1, Lcom/twitter/model/search/n;->d:Lcom/twitter/model/search/d;

    iput-object v0, p0, Lcom/twitter/model/search/m;->d:Lcom/twitter/model/search/d;

    .line 37
    iget-object v0, p1, Lcom/twitter/model/search/n;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/search/m;->e:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/twitter/model/search/n;->f:Lcom/twitter/model/core/TwitterSocialProof;

    iput-object v0, p0, Lcom/twitter/model/search/m;->f:Lcom/twitter/model/core/TwitterSocialProof;

    .line 39
    iget-object v0, p1, Lcom/twitter/model/search/n;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/search/m;->g:Ljava/lang/String;

    .line 40
    iget-object v0, p1, Lcom/twitter/model/search/n;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/search/m;->h:Ljava/lang/String;

    .line 41
    return-void
.end method
