.class public Lcom/twitter/model/moments/maker/e;
.super Lcom/twitter/model/moments/maker/w;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/maker/f;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/twitter/model/moments/maker/w;-><init>()V

    .line 23
    iget-object v0, p1, Lcom/twitter/model/moments/maker/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/maker/e;->a:Ljava/lang/String;

    .line 24
    iget-object v0, p1, Lcom/twitter/model/moments/maker/f;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/moments/maker/e;->b:Ljava/lang/String;

    .line 25
    iget-object v0, p1, Lcom/twitter/model/moments/maker/f;->c:Ljava/lang/Long;

    iput-object v0, p0, Lcom/twitter/model/moments/maker/e;->c:Ljava/lang/Long;

    .line 26
    return-void
.end method
