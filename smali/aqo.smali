.class public Laqo;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Laqn;


# instance fields
.field private final a:Lcom/twitter/android/util/t;


# direct methods
.method public constructor <init>(Lcom/twitter/android/util/t;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Laqo;->a:Lcom/twitter/android/util/t;

    .line 14
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Laqo;->a:Lcom/twitter/android/util/t;

    invoke-virtual {v0}, Lcom/twitter/android/util/t;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Laqo;->a:Lcom/twitter/android/util/t;

    invoke-virtual {v0}, Lcom/twitter/android/util/t;->b()V

    .line 24
    return-void
.end method
