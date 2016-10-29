.class final Lcom/twitter/database/generated/dj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbdq;


# instance fields
.field private final a:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/twitter/database/generated/dj;->a:Landroid/content/ContentValues;

    .line 45
    return-void
.end method


# virtual methods
.method public a(J)Lbdq;
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitter/database/generated/dj;->a:Landroid/content/ContentValues;

    const-string/jumbo v1, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    return-object p0
.end method

.method public synthetic b(J)Lcom/twitter/database/model/v;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/twitter/database/generated/dj;->a(J)Lbdq;

    move-result-object v0

    return-object v0
.end method
