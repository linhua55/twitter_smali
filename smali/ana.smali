.class public Lana;
.super Lamu;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/model/moments/viewmodels/t;


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/t;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lamu;-><init>()V

    .line 11
    iput-object p1, p0, Lana;->a:Lcom/twitter/model/moments/viewmodels/t;

    .line 12
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
