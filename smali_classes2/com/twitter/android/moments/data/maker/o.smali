.class public Lcom/twitter/android/moments/data/maker/o;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/api/moments/maker/m;


# direct methods
.method public constructor <init>(Lcom/twitter/library/api/moments/maker/m;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/twitter/android/moments/data/maker/o;->a:Lcom/twitter/library/api/moments/maker/m;

    .line 22
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/twitter/util/h;->c()V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/data/maker/o;->a:Lcom/twitter/library/api/moments/maker/m;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/library/api/moments/maker/m;->a(J)Z

    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    return-void
.end method
