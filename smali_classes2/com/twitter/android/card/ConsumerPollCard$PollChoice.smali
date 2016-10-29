.class public final enum Lcom/twitter/android/card/ConsumerPollCard$PollChoice;
.super Ljava/lang/Enum;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/twitter/android/card/ConsumerPollCard$PollChoice;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

.field public static final enum b:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

.field public static final enum c:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

.field public static final enum d:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

.field public static final enum e:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

.field private static final synthetic f:[Lcom/twitter/android/card/ConsumerPollCard$PollChoice;


# instance fields
.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->a:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    .line 97
    new-instance v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    const-string/jumbo v1, "ONE"

    invoke-direct {v0, v1, v3, v3}, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->b:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    .line 98
    new-instance v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    const-string/jumbo v1, "TWO"

    invoke-direct {v0, v1, v4, v4}, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->c:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    .line 99
    new-instance v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    const-string/jumbo v1, "THREE"

    invoke-direct {v0, v1, v5, v5}, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->d:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    .line 100
    new-instance v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    const-string/jumbo v1, "FOUR"

    invoke-direct {v0, v1, v6, v6}, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->e:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    .line 95
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    sget-object v1, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->a:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    aput-object v1, v0, v2

    sget-object v1, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->b:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    aput-object v1, v0, v3

    sget-object v1, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->c:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    aput-object v1, v0, v4

    sget-object v1, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->d:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    aput-object v1, v0, v5

    sget-object v1, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->e:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    aput-object v1, v0, v6

    sput-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->f:[Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p3, p0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->ordinal:I

    .line 106
    return-void
.end method

.method static a(Lcom/twitter/android/card/ConsumerPollCard$PollChoice;)I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->ordinal:I

    return v0
.end method

.method static a(I)Lcom/twitter/android/card/ConsumerPollCard$PollChoice;
    .locals 5

    .prologue
    .line 111
    packed-switch p0, :pswitch_data_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Could not convert ordinal %d to PollChoice"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 134
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 133
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :pswitch_0
    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->a:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    .line 137
    :goto_0
    return-object v0

    .line 117
    :pswitch_1
    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->b:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    goto :goto_0

    .line 121
    :pswitch_2
    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->c:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    goto :goto_0

    .line 125
    :pswitch_3
    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->d:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    goto :goto_0

    .line 129
    :pswitch_4
    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->e:Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/android/card/ConsumerPollCard$PollChoice;
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    return-object v0
.end method

.method public static values()[Lcom/twitter/android/card/ConsumerPollCard$PollChoice;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->f:[Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    invoke-virtual {v0}, [Lcom/twitter/android/card/ConsumerPollCard$PollChoice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/card/ConsumerPollCard$PollChoice;

    return-object v0
.end method
