.class public Lcom/twitter/model/moments/z;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/moments/z;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/twitter/model/moments/ac;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/moments/ac;-><init>(Lcom/twitter/model/moments/aa;)V

    sput-object v0, Lcom/twitter/model/moments/z;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/moments/ab;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iget-object v0, p1, Lcom/twitter/model/moments/ab;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/z;->b:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/twitter/model/moments/ab;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/z;->c:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/twitter/model/moments/ab;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/z;->d:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lcom/twitter/model/moments/ab;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/z;->e:Ljava/lang/String;

    .line 31
    return-void
.end method
