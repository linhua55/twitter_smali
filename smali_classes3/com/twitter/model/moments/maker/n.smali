.class public Lcom/twitter/model/moments/maker/n;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/model/moments/maker/p;


# instance fields
.field public final b:Lcom/twitter/model/moments/ak;

.field public final c:Lcom/twitter/model/moments/k;

.field public final d:Lcom/twitter/model/moments/bd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/twitter/model/moments/maker/p;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/p;-><init>()V

    sput-object v0, Lcom/twitter/model/moments/maker/n;->a:Lcom/twitter/model/moments/maker/p;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/moments/maker/o;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iget-object v0, p1, Lcom/twitter/model/moments/maker/o;->a:Lcom/twitter/model/moments/ak;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ak;

    iput-object v0, p0, Lcom/twitter/model/moments/maker/n;->b:Lcom/twitter/model/moments/ak;

    .line 32
    iget-object v0, p1, Lcom/twitter/model/moments/maker/o;->b:Lcom/twitter/model/moments/k;

    iput-object v0, p0, Lcom/twitter/model/moments/maker/n;->c:Lcom/twitter/model/moments/k;

    .line 33
    iget-object v0, p1, Lcom/twitter/model/moments/maker/o;->c:Lcom/twitter/model/moments/bd;

    iput-object v0, p0, Lcom/twitter/model/moments/maker/n;->d:Lcom/twitter/model/moments/bd;

    .line 34
    return-void
.end method
