.class public Lcom/twitter/model/account/i;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    if-eqz p1, :cond_0

    .line 13
    iput-object p1, p0, Lcom/twitter/model/account/i;->a:Ljava/lang/String;

    .line 17
    :goto_0
    return-void

    .line 15
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/twitter/model/account/i;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/twitter/model/account/i;->a:Ljava/lang/String;

    return-object v0
.end method
