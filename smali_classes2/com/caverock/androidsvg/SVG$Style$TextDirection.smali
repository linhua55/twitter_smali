.class public final enum Lcom/caverock/androidsvg/SVG$Style$TextDirection;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/caverock/androidsvg/SVG$Style$TextDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

.field public static final enum b:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

.field private static final synthetic c:[Lcom/caverock/androidsvg/SVG$Style$TextDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1053
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    const-string/jumbo v1, "LTR"

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Style$TextDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->a:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 1054
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    const-string/jumbo v1, "RTL"

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/SVG$Style$TextDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->b:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 1051
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->a:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->b:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->c:[Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1051
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDirection;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    return-object v0
.end method

.method public static values()[Lcom/caverock/androidsvg/SVG$Style$TextDirection;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->c:[Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    array-length v1, v0

    new-array v2, v1, [Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
