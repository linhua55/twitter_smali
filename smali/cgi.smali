.class public Lcgi;
.super Lcmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmv",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcgi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcgi;

    invoke-direct {v0}, Lcgi;-><init>()V

    sput-object v0, Lcgi;->a:Lcgi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcmv;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcgh;->a:Lcgh;

    invoke-virtual {v0, p1}, Lcgh;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/bl;->a()Lcom/twitter/model/core/Tweet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcgi;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/Tweet;

    move-result-object v0

    return-object v0
.end method
