﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Cosmos.Compiler.Assembler.X86.X86.x87
{
    [OpCode("fld1")]
    public class FloatPushOne : Instruction
    {
        public static void InitializeEncodingData(Instruction.InstructionData aData)
        {
            aData.EncodingOptions.Add(new InstructionData.InstructionEncodingOption
           {
               OpCode = new byte[] { 0xDE, 0xE8 },
           });
        }
    }
}