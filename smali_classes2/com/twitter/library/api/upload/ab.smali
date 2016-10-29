.class public Lcom/twitter/library/api/upload/ab;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/library/api/upload/h;

.field public final b:Lbqy;


# direct methods
.method private constructor <init>(Lcom/twitter/library/api/upload/h;Lbqy;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/twitter/library/api/upload/ab;->a:Lcom/twitter/library/api/upload/h;

    .line 113
    iput-object p2, p0, Lcom/twitter/library/api/upload/ab;->b:Lbqy;

    .line 114
    invoke-static {p1, p2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public static a(Lbqy;)Lcom/twitter/library/api/upload/ab;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/twitter/library/api/upload/ab;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/twitter/library/api/upload/ab;-><init>(Lcom/twitter/library/api/upload/h;Lbqy;)V

    return-object v0
.end method

.method public static a(Lcom/twitter/library/api/upload/h;)Lcom/twitter/library/api/upload/ab;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/twitter/library/api/upload/ab;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/library/api/upload/ab;-><init>(Lcom/twitter/library/api/upload/h;Lbqy;)V

    return-object v0
.end method
