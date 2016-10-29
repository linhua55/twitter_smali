.class public Lazd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/g;


# instance fields
.field private final a:Lcoa;


# direct methods
.method public constructor <init>(Lcoa;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lazd;->a:Lcoa;

    .line 17
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 29
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lazd;->a(JLjava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/lang/String;J)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lazd;->a:Lcoa;

    invoke-virtual {v0, p3}, Lcoa;->a(Ljava/lang/String;)Lcnv;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcnv;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/twitter/config/h;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
