.class public abstract Ldnz;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Ldoa;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ldns;

    invoke-direct {v0}, Ldns;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ldnv;",
            ">;"
        }
    .end annotation
.end method
